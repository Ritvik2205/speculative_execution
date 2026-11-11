.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 62
test dl, cl
bts rsi, 206
or cl, -77
and bl, dil
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
or bl, 127
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and ebx, 57
and cl, -111
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
