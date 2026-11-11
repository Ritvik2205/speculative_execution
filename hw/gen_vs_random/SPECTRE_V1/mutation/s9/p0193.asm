.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, -60
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
cmovno ecx, eax
inc al
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
setno dl
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
mov al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and ax, 21910
sub ax, -16648
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
