.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
dec al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
mov al, dil
neg dil
add al, -127
test dil, -58
mov bl, cl
sbb di, -105
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
cmp dil, 101
adc cl, al
cmp al, 98
adc cl, 31
xor al, sil
test dil, -5
or cl, 66
and bl, al
or sil, sil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
lea di, qword ptr [rsi]
test bl, dl
mov al, bl
and bl, 76
sub dil, bl
test al, 72
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
sbb dil, cl
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
adc sil, al
sub al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
