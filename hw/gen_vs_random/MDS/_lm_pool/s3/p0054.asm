.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -41
or sil, al
or dil, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
bt ebx, edi
and rbx, 65
and eax, 461212071
and al, dl
and al, al
xor cl, bl
or dl, -97
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
or al, bl
or rax, -1523798580
xor al, bl
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
