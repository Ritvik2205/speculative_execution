.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 49
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
cmovno rdx, rax
test bx, 70
or dil, -113
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
cmovnbe rdx, rbx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
lea bx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
sub dil, 87
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
lea rbx, qword ptr [rdx + rsi]
xchg sil, sil
cmovnle rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
