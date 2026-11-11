.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
xor rcx, 71
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 26
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or ecx, edx
btr si, di
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor dil, al
test di, 19
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
