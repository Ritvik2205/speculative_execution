.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test dil, 46
or cl, 119
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 26
or sil, -49
or ax, -4210
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
