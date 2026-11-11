.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rcx + rdi + 65]
add al, 93
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmp dil, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
jmp .bb_0.3
.bb_0.3:
neg dil
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
