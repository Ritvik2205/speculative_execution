.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rdi + rcx + 23]
jmp .bb_0.3
.bb_0.3:
bt ecx, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
sub cl, al
or bl, 114
or bl, sil
xor al, sil
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
