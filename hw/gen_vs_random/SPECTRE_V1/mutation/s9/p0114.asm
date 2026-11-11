.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
sub dil, -32
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovno ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
mov al, cl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
setno dl
add rsi, 109
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub ax, -17837
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and ax, -22629
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
