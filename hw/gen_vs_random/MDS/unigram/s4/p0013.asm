.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
or al, bl
bt ax, 76
or dl, cl
or di, 79
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 31
test al, 22
and al, al
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and bl, 68
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rcx, rbx
jmp .bb_0.1
.bb_0.1:
test bl, -14
not bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 25
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
cmovs esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovz edi, edi
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
