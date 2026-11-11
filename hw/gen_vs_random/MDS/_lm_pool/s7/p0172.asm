.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 48
btc edi, 230
xor bl, dl
or al, -78
or al, cl
and dil, -62
xor di, -83
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
bt ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or al, -61
xor dil, bl
btr esi, eax
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
