.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
or rcx, -17
or edx, -1
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rsi, 95
and al, cl
bt cx, di
jmp .bb_0.1
.bb_0.1:
xor bl, -102
test bl, -9
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
not al
not sil
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
