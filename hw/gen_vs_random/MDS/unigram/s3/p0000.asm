.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
and si, -121
and si, -121
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test eax, 343548072
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 33
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
or edx, -1
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
or cx, 49
or edx, -78
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and bl, -74 # instrumentation
cmovns ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmovz ecx, ebx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
