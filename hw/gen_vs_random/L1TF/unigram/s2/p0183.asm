.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, 95
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 65
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
btc ax, dx
add al, dl
adc rbx, 75
jmp .bb_0.1
.bb_0.1:
add al, -21 # instrumentation
mov edi, ebx
xor al, -127
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rbx, rax
btr ax, dx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
