.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
mul rcx
add al, dl
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
add bl, -95
sbb sil, bl
add cl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
lea bx, qword ptr [rax]
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
