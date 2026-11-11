.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
lea rsi, qword ptr [rdx + rax]
dec dl
add cl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 81
cmp di, -98
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
mov di, cx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
cmovns eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
