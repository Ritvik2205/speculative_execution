.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
sbb sil, dl
lea eax, qword ptr [rcx]
btr eax, ebx
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and sil, bl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and bx, 73
add di, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
