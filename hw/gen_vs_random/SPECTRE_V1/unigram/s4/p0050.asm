.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, 28
add dl, -84 # instrumentation
lea edx, qword ptr [rax + rax + 17]
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
mov al, dil
add esi, 62
lea di, qword ptr [rbx]
setnle dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 47
setp al
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
