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
add rsi, 109
mov al, cl
inc al
cmovno ecx, eax
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and ax, 25351
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sub ax, -15315
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
mul dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
cmovb dx, di
or ax, -114
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
