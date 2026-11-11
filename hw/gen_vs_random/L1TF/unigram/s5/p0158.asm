.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp si, di
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 31
or eax, ebx
add dl, -53 # instrumentation
lea rcx, qword ptr [rdx + rbx + 45]
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
add al, 48 # instrumentation
cmovnz ecx, ecx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 18
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 80
mov al, cl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sub ax, 7297
lea ax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
