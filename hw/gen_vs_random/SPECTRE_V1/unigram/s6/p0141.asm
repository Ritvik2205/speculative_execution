.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -123 # instrumentation
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
movzx ecx, dx
add bl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
mul dl
xor rbx, -34
test bl, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
