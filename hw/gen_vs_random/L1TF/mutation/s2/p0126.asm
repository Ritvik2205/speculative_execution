.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
setno dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
btc ebx, 11
and dl, -86
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc di, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
cmovo rax, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
setb al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
sbb sil, -79
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
