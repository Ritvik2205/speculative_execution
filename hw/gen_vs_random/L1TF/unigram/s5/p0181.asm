.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
mov dil, bl
sbb rax, 803312930
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
xor dl, 9
mov cl, al
cwde
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
cmovnb rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
add cl, -20
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
