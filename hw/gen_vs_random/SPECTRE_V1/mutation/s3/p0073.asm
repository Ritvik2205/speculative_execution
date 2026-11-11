.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
mov al, cl
cmovno ecx, eax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
setno dl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
add rsi, 109
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
sub dil, -32
js .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, 25351
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
sub ax, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
