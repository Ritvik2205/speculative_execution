.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
bts esi, edx
adc bl, 70
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
or cl, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
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
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
sub rbx, -128
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
or rax, -357903210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
