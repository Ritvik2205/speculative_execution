.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
or dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 82
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
sbb eax, 858696050
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
adc dil, 69
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdx + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
xchg bl, sil
mov edi, ebx
adc edi, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
