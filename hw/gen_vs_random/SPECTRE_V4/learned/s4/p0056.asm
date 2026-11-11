.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or sil, cl
and dil, sil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and bl, -119
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
xchg al, sil
adc dil, -17
mov dil, dl
sub al, 0
xor bl, bl
add al, -127
xor dl, bl
cmp bl, -79
xor rax, -98
or al, cl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
adc dl, al
add cl, -62
sub cl, dil
sub dl, 107
xor rax, -117
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
