.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
cmp rdi, 28
cmp edx, -95
cmp rax, 1682181214
sub al, 26
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
sbb cl, 12
and al, 85
adc dl, bl
cmp eax, 64
sub bl, dl
bts di, 72
test al, 18
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
or al, al
cmp ax, -22704
test ecx, -1293796332
and al, dil
sub al, dl
cmp dx, -1
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
xchg al, dl
or eax, -612395655
or bl, bl
sub al, dl
sub bl, sil
xor dl, al
adc cl, 6
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp al, -116
sub rax, 1294268026
sub rsi, -48
xor cl, -15
cmp ecx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
