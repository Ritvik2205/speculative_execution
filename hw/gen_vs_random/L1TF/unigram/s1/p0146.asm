.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx bx, dl
cmovnp edx, esi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
cmovb ebx, ebx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bt bx, 78
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and cx, -79
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
movsx di, sil
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
bts ax, 201
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
add al, 48 # instrumentation
cmovnz ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
