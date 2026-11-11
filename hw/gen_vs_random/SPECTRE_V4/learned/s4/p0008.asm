.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
cmp bl, -16
mov dl, sil
sub al, 26
xchg rax, rdi
xor rax, rdi
sub cl, dl
adc eax, 1019803307
or al, -16
mov dil, dil
add al, dl
or dil, cl
or al, -47
adc dil, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
cmp ebx, -27
mov bl, 106
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
test ecx, -1293796332
and al, -118
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
adc bl, 0
test dl, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub sil, -35
or dl, bl
and sil, -84
cmp sil, dl
or eax, -646827727
add al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
