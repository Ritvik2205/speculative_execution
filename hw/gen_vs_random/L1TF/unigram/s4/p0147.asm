.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 55
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
add dl, 62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
bt rax, rsi
movsx rdx, cl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
cmovnb rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
setnle dil
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
inc ebx
inc si
mov rsi, 32
setnl dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
