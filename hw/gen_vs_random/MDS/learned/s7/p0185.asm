.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
test rax, 1949278494
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test cl, -113
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, -75
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
xor cl, bl
or bl, dl
test dil, -51
or sil, -49
or al, 30
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
