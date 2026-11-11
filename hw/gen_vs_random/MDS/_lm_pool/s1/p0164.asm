.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and dl, -73
test bl, 65
or bl, -62
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or dil, bl
test bl, -9
xor al, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rsi, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
