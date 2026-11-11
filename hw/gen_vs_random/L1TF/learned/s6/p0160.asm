.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
inc rax
lea rsi, qword ptr [rdi + rcx]
or si, 26
cmp rax, 16650668
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb dl, dil
sbb dl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
xor bl, al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
