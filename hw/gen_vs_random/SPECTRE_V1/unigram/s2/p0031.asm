.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 80
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
xor edi, ecx
setp bl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
cmovs rbx, rcx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
sub ax, dx
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
or ebx, -124
adc bl, -76
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
