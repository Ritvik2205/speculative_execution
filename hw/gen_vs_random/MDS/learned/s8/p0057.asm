.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or dil, 12
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test bl, dl
or dl, -8
xor edx, 17
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 98
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test al, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, -1931765367
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
