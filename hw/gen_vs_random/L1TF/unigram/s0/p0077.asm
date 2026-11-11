.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
sub rsi, 71
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
test rsi, rdx
lea ecx, qword ptr [rdx + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
setnb cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
mov dil, dil
mov cx, ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
add sil, bl
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
setb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
