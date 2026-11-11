.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, esi
adc rax, 1873854064
add al, -4
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
mov dil, sil
test rcx, 83
mov dl, al
cmp edx, 4
adc al, sil
or bl, bl
or eax, -1341747033
test eax, -651442446
add al, -32
sub al, bl
or di, 122
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
not bl
and al, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
