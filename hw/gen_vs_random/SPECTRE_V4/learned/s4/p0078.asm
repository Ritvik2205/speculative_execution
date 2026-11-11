.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
adc bl, dl
and esi, 61
sbb al, -52
dec al
or dl, cl
or al, cl
adc dil, cl
or dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmp sil, -100
mov al, dil
adc sil, dil
jmp .bb_0.1
.bb_0.1:
xchg rsi, rbx
sub cl, al
cmp dl, al
sub cl, al
dec al
mov sil, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
add dl, -8
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
