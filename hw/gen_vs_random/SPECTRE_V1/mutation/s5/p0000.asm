.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub dil, -32
setno dl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
add rsi, -60
mov al, cl
inc al
cmovno ecx, eax
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rax + rcx + 48576]
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmp al, 23
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
