.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60
sub esi, eax
lea rsi, qword ptr [rcx]
setnbe cl
cmovs cx, dx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc rdi, -75
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
adc cl, -18
lea di, qword ptr [rsi + rbx]
dec bl
cmp rdi, rdx
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
add bl, al
lea esi, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
dec rdx
cbw
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
