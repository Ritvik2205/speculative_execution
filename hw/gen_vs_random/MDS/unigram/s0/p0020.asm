.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rdx, rsi
and dl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
bt ecx, eax
or dil, 12
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp esi, edi
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
bts rcx, 4
cmovz esi, ecx
jmp .bb_0.1
.bb_0.1:
or ebx, -104
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
btc eax, 40
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
test rsi, 73
test eax, 1729060510
test dil, dl
btr di, bx
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
