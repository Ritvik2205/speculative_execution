.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs di, ax
mul rcx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 29
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, 83
add dl, -47 # instrumentation
sbb al, 41
sets bl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
lea ebx, qword ptr [rdi + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
movsx bx, sil
mov dil, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
