.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
setz al
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
cmp ebx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
lea edx, qword ptr [rdx + rcx]
btr ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
movsx esi, al
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmp dil, 96
setb dil
add al, al
add al, 87 # instrumentation
cmovo rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
