.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
or dx, 1 # instrumentation
dec rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
bt ecx, 1
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
add al, 117
lea edx, qword ptr [rdi + rdx]
lea ax, qword ptr [rdi + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
setno cl
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
setnl bl
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
