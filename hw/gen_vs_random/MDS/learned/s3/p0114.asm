.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
test rsi, 49
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and dl, dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
not al
and rbx, 65
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 14
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
