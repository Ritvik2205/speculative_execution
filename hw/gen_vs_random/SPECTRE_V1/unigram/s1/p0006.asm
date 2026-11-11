.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, ax
bt esi, 77
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 88
or sil, al
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
inc edx
bts edi, 49
jb .bb_0.1
jmp .exit_0
.bb_0.1:
seto cl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add cl, 112 # instrumentation
adc cl, al
xchg sil, dil
btc edx, 169
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
