.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo esi, eax
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
sub sil, -55
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 10
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
bts rdi, 82
test bl, 53
jns .bb_0.1
jmp .exit_0
.bb_0.1:
movzx di, cl
sbb dx, 10
cmp cl, 3
xor bl, 79
btc rdx, 2
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
