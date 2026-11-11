.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
not cl
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, di
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor di, si
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
