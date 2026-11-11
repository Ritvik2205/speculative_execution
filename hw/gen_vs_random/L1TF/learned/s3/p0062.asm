.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 42
or sil, -44
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or bl, 114
xor cl, 89
lea di, qword ptr [rax]
lea si, qword ptr [rdi]
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
