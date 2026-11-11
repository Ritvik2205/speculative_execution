.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, 11
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
setno dil
and dl, 73
btc di, di
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
cmovo rax, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
setb al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
