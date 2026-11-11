.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
cmp ax, -18179
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
or dl, dil
adc al, dil
adc dl, al
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or cl, 66
or dil, sil
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub al, dil
or dx, 65
xor dl, -66
test eax, -651442446
test al, 115
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
adc cl, 31
cmp sil, 127
and cl, dl
mov bl, al
or eax, -612395655
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
or cl, al
btc rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
