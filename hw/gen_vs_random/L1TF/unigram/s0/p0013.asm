.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe al
lea rcx, qword ptr [rcx + rsi + 56]
bts rdi, rdx
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
sbb bx, 2
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and edx, 85
add cl, 19
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
or sil, -5
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
