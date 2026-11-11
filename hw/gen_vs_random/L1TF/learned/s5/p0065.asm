.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
inc dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and dil, bl
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
or al, -57
bt ecx, edi
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or rdx, -22
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
