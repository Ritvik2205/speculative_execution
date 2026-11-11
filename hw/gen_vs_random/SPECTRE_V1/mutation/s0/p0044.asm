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
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and ax, 21910
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sub ax, -16648
jmp .bb_0.2
.bb_0.2:
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
movsx cx, dl
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
