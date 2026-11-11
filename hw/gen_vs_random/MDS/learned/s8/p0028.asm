.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
bt ax, dx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 42
xor dil, dl
xor al, dl
and rax, 1250429750
and al, dl
xor sil, -126
or sil, dl
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and ax, -4410
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
