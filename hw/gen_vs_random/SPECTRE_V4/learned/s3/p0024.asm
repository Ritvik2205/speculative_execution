.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
xchg ebx, ecx
xchg rax, rbx
cmp rax, -1247892360
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
sub cl, sil
cmp rbx, -91
btc rdx, rdi
test al, 18
sbb eax, 426996540
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
add al, -127
xor al, bl
xor al, cl
cmp rcx, -121
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
add sil, 3
xchg edx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or bl, -35
add al, 40
cmp al, 98
or cl, al
test edx, 1479885278
sub rdi, -52
adc bl, dil
sub dl, sil
test ax, -6841
sbb al, 70
cmp bl, al
movsx ax, sil
xor al, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
