.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ecx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
mov dil, dl
test dl, al
add al, 40
test bl, al
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
adc dl, sil
cmp al, 75
cmp dl, 83
dec dl
cmp al, 114
adc dl, 42
and rcx, 29
add dil, -84
adc bl, -58
xor al, -120
xor cl, al
xchg sil, cl
cmp al, bl
cmp al, -122
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
and cl, bl
cmp dil, 53
and sil, bl
add dl, bl
test al, 72
xor cl, bl
and dl, sil
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
add edx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
