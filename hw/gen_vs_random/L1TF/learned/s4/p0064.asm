.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 62
or ax, 11821
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
sbb ax, -9869
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and al, -68
cmovb ax, dx
sub bl, dl
jp .bb_0.4
jmp .exit_0
.bb_0.4:
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
