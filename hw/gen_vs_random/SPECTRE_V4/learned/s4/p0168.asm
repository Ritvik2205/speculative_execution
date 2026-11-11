.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 83
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
or al, -90
xor al, dl
inc ecx
cmp al, 116
sub dl, al
or bl, 61
test eax, 1947430392
xchg cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and bl, 76
test dl, -102
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and cl, bl
sbb dl, 75
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and cl, 32
neg dil
xor dl, -123
xchg eax, ecx
jmp .bb_0.1
.bb_0.1:
adc dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
