.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
or dl, -21
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor al, -89
cmovb rcx, rdx
or al, 16
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test rax, -1579405415
and sil, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor dx, 41
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
