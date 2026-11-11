.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -99
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub ecx, 67
sub ax, 26007
xchg edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
mov ax, 16
adc edi, 117
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
mov cx, 12
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 27
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
sub sil, dil
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
